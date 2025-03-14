variable "enable" {
  type        = bool
  description = "whether this module should do anything at all"
  default     = false
}

variable "workspace_id" {
  description = "Microsoft Fabric workspace id"
  type        = string
}

variable "notebook_name" {
  description = "Microsoft Fabric notebook display name"
  type        = string
}

variable "notebook_description" {
  description = "Microsoft Fabric notebook description"
  type        = string
  default     = ""
}

variable "format" {
  description = "The format of the notebook"
  type        = string
  default     = "ipynb"

  validation {
    condition     = contains(["ipynb", "py"], var.format)
    error_message = "The format must be either 'ipynb' or 'py'."
  }
}

variable "notebook_definition_path" {
  description = "The path to the 'ipynb' notebook file"
  type        = string
}

variable "tokens" {
  description = "The tokens to be used in the notebook"
  type        = map(string)
  default     = {}
}

variable "definition_update_enabled" {
  description = "Update definition on change of source content."
  type        = bool
  default     = true
}
