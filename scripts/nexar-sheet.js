export class NexarSheet extends ActorSheet {
  /** Opciones por defecto */
  static get defaultOptions() {
    return mergeObject(super.defaultOptions, {
      classes: ["las-torres-malditas", "sheet", "actor"],
      template: "systems/las-torres-malditas/templates/sheets/nexar-sheet.html",
      width: 600,
      height: 400,
      tabs: [{ navSelector: ".sheet-tabs", contentSelector: ".sheet-body", initial: "attributes" }]
    });
  }

  /** Preparar datos para la plantilla */
  getData() {
    const context = super.getData();
    context.system = this.actor.system;
    return context;
  }

  /** Activar escuchas si fuera necesario */
  activateListeners(html) {
    super.activateListeners(html);
    // Aquí puedes añadir eventos personalizados
  }
}
