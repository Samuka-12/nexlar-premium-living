import { useState } from "react";
import { Plus, Trash2 } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";

interface SpecsEditorProps {
  value: Record<string, string>;
  onChange: (value: Record<string, string>) => void;
}

export function SpecsEditor({ value, onChange }: SpecsEditorProps) {
  const entries = Object.entries(value);

  function updateKey(oldKey: string, newKey: string) {
    const next: Record<string, string> = {};
    for (const [k, v] of Object.entries(value)) {
      next[k === oldKey ? newKey : k] = v;
    }
    onChange(next);
  }

  function updateValue(key: string, newValue: string) {
    onChange({ ...value, [key]: newValue });
  }

  function removeEntry(key: string) {
    const next = { ...value };
    delete next[key];
    onChange(next);
  }

  function addEntry() {
    const key = `Especificação ${entries.length + 1}`;
    onChange({ ...value, [key]: "" });
  }

  return (
    <div className="space-y-3">
      {entries.length === 0 && (
        <p className="text-sm text-muted-foreground">Nenhuma especificação adicionada ainda.</p>
      )}
      {entries.map(([key, val]) => (
        <div key={key} className="flex gap-2">
          <Input
            value={key}
            onChange={(e) => updateKey(key, e.target.value)}
            placeholder="Propriedade (ex: Material)"
            className="w-1/2"
          />
          <Input
            value={val}
            onChange={(e) => updateValue(key, e.target.value)}
            placeholder="Valor (ex: Aço inox 18/10)"
            className="flex-1"
          />
          <Button
            type="button"
            variant="ghost"
            size="icon"
            onClick={() => removeEntry(key)}
            className="shrink-0 text-destructive hover:text-destructive"
          >
            <Trash2 className="h-4 w-4" />
          </Button>
        </div>
      ))}
      <Button type="button" variant="outline" size="sm" className="gap-2" onClick={addEntry}>
        <Plus className="h-4 w-4" />
        Adicionar especificação
      </Button>
    </div>
  );
}
