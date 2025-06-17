// Archivo main.js - punto de entrada del sistema
import { NexarSheet } from "./nexar-sheet.js";

Hooks.once("init", function() {
  console.log("Las Torres Malditas | Iniciando sistema...");

  // Desregistrar hoja por defecto
  Actors.unregisterSheet("core", ActorSheet);

  // Registrar la hoja personalizada
  Actors.registerSheet("las-torres-malditas", NexarSheet, {
    types: ["Nexar"],
    makeDefault: true
  });
});
