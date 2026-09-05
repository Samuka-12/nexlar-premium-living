import { createContext, useCallback, useContext, useEffect, useMemo, useState } from "react";

export type CartItem = {
  productId: string;
  slug: string;
  name: string;
  image: string;
  price: number;
  variant?: string | undefined;
  quantity: number;
};

type CartState = {
  items: CartItem[];
  isOpen: boolean;
  ready: boolean;
  open: () => void;
  close: () => void;
  add: (item: Omit<CartItem, "quantity">, quantity?: number) => void;
  remove: (productId: string, variant?: string) => void;
  setQuantity: (productId: string, quantity: number, variant?: string) => void;
  clear: () => void;
  subtotal: number;
  count: number;
};

const CartContext = createContext<CartState | null>(null);
const STORAGE_KEY = "nexlar.cart.v1";

const sameLine = (a: CartItem, productId: string, variant?: string) =>
  a.productId === productId && (a.variant ?? "") === (variant ?? "");

export function CartProvider({ children }: { children: React.ReactNode }) {
  const [items, setItems] = useState<CartItem[]>([]);
  const [isOpen, setIsOpen] = useState(false);
  const [ready, setReady] = useState(false);

  useEffect(() => {
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      if (raw) setItems(JSON.parse(raw) as CartItem[]);
    } catch {
      /* ignore */
    }
    setReady(true);
  }, []);

  useEffect(() => {
    if (!ready) return;
    localStorage.setItem(STORAGE_KEY, JSON.stringify(items));
  }, [items, ready]);

  const add = useCallback((item: Omit<CartItem, "quantity">, quantity = 1) => {
    setItems((prev) => {
      const existing = prev.find((i) => sameLine(i, item.productId, item.variant));
      if (existing) {
        return prev.map((i) =>
          sameLine(i, item.productId, item.variant) ? { ...i, quantity: i.quantity + quantity } : i,
        );
      }
      return [...prev, { ...item, quantity }];
    });
    setIsOpen(true);
  }, []);

  const remove = useCallback((productId: string, variant?: string) => {
    setItems((prev) => prev.filter((i) => !sameLine(i, productId, variant)));
  }, []);

  const setQuantity = useCallback((productId: string, quantity: number, variant?: string) => {
    setItems((prev) =>
      quantity <= 0
        ? prev.filter((i) => !sameLine(i, productId, variant))
        : prev.map((i) => (sameLine(i, productId, variant) ? { ...i, quantity } : i)),
    );
  }, []);

  const value = useMemo<CartState>(() => {
    const subtotal = items.reduce((sum, i) => sum + i.price * i.quantity, 0);
    const count = items.reduce((sum, i) => sum + i.quantity, 0);
    return {
      items,
      isOpen,
      ready,
      open: () => setIsOpen(true),
      close: () => setIsOpen(false),
      add,
      remove,
      setQuantity,
      clear: () => setItems([]),
      subtotal,
      count,
    };
  }, [items, isOpen, ready, add, remove, setQuantity]);

  return <CartContext.Provider value={value}>{children}</CartContext.Provider>;
}

export function useCart() {
  const ctx = useContext(CartContext);
  if (!ctx) throw new Error("useCart must be used inside CartProvider");
  return ctx;
}
