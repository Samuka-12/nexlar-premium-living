import { cn } from "@/lib/utils";

type Variant = "horizontal" | "square" | "mono";

/**
 * NEXLAR mark: an original vector house whose roof and walls are drawn by a
 * single continuous "N" stroke.
 */
export function LogoMark({
  className,
  mono = false,
}: {
  className?: string;
  mono?: boolean;
}) {
  return (
    <svg
      viewBox="0 0 48 48"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      role="img"
      aria-label="NEXLAR"
      className={cn("h-9 w-9", className)}
    >
      <path
        d="M4 20.5 24 4l20 16.5V42a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V20.5Z"
        className={mono ? "fill-current opacity-10" : "fill-[color:var(--color-ink)]"}
      />
      <path
        d="M15 35V17l18 14V13"
        stroke={mono ? "currentColor" : "var(--color-primary)"}
        strokeWidth="4.5"
        strokeLinecap="round"
        strokeLinejoin="round"
      />
    </svg>
  );
}

export function Logo({
  variant = "horizontal",
  className,
}: {
  variant?: Variant;
  className?: string;
}) {
  if (variant === "square") {
    return (
      <div
        className={cn(
          "inline-flex flex-col items-center justify-center gap-1 rounded-2xl bg-ink px-4 py-3",
          className,
        )}
      >
        <LogoMark className="h-8 w-8" mono />
        <span className="font-display text-sm font-semibold tracking-[0.3em] text-ink-foreground">
          NEXLAR
        </span>
      </div>
    );
  }

  return (
    <span className={cn("inline-flex items-center gap-2", className)}>
      <LogoMark mono={variant === "mono"} />
      <span
        className={cn(
          "font-display text-xl font-bold tracking-[0.22em]",
          variant === "mono" ? "text-current" : "text-ink",
        )}
      >
        NEXLAR
      </span>
    </span>
  );
}
