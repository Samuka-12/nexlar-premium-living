import { useState } from "react";
import { Plus, Trash2 } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { Label } from "@/components/ui/label";

export type FaqItem = {
  id: string;
  question: string;
  answer: string;
  position: number;
  isNew?: boolean;
  toDelete?: boolean;
};

interface FaqEditorProps {
  items: FaqItem[];
  onChange: (items: FaqItem[]) => void;
}

export function FaqEditor({ items, onChange }: FaqEditorProps) {
  const visible = items.filter((item) => !item.toDelete);

  function updateItem(id: string, field: "question" | "answer", val: string) {
    onChange(items.map((item) => (item.id === id ? { ...item, [field]: val } : item)));
  }

  function removeItem(id: string) {
    onChange(
      items.map((item) =>
        item.id === id ? { ...item, toDelete: true } : item
      )
    );
  }

  function addItem() {
    const newItem: FaqItem = {
      id: `new-${Date.now()}`,
      question: "",
      answer: "",
      position: visible.length,
      isNew: true,
    };
    onChange([...items, newItem]);
  }

  function moveUp(index: number) {
    if (index === 0) return;
    const next = [...visible];
    [next[index - 1], next[index]] = [next[index], next[index - 1]];
    const reordered = next.map((item, i) => ({ ...item, position: i }));
    onChange([...reordered, ...items.filter((item) => item.toDelete)]);
  }

  function moveDown(index: number) {
    if (index === visible.length - 1) return;
    const next = [...visible];
    [next[index], next[index + 1]] = [next[index + 1], next[index]];
    const reordered = next.map((item, i) => ({ ...item, position: i }));
    onChange([...reordered, ...items.filter((item) => item.toDelete)]);
  }

  return (
    <div className="space-y-4">
      {visible.length === 0 && (
        <p className="text-sm text-muted-foreground">Nenhuma pergunta adicionada ainda.</p>
      )}
      {visible.map((item, i) => (
        <div
          key={item.id}
          className="relative space-y-3 rounded-xl border border-border bg-card p-4"
        >
          <div className="flex items-center justify-between">
            <span className="text-xs font-semibold text-muted-foreground">
              Pergunta {i + 1}
            </span>
            <div className="flex gap-1">
              <Button
                type="button"
                variant="ghost"
                size="sm"
                className="h-7 px-2 text-xs"
                onClick={() => moveUp(i)}
                disabled={i === 0}
              >
                ↑
              </Button>
              <Button
                type="button"
                variant="ghost"
                size="sm"
                className="h-7 px-2 text-xs"
                onClick={() => moveDown(i)}
                disabled={i === visible.length - 1}
              >
                ↓
              </Button>
              <Button
                type="button"
                variant="ghost"
                size="icon"
                className="h-7 w-7 text-destructive hover:text-destructive"
                onClick={() => removeItem(item.id)}
              >
                <Trash2 className="h-3.5 w-3.5" />
              </Button>
            </div>
          </div>
          <div className="space-y-1.5">
            <Label className="text-xs">Pergunta</Label>
            <Input
              value={item.question}
              onChange={(e) => updateItem(item.id, "question", e.target.value)}
              placeholder="Ex: O produto pode ir à lava-louças?"
            />
          </div>
          <div className="space-y-1.5">
            <Label className="text-xs">Resposta</Label>
            <Textarea
              value={item.answer}
              onChange={(e) => updateItem(item.id, "answer", e.target.value)}
              placeholder="Resposta detalhada..."
              rows={2}
            />
          </div>
        </div>
      ))}
      <Button type="button" variant="outline" size="sm" className="gap-2" onClick={addItem}>
        <Plus className="h-4 w-4" />
        Adicionar pergunta
      </Button>
    </div>
  );
}
