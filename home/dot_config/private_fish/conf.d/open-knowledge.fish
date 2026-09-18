# >>> open-knowledge cli >>>
# ! Contents within this block are managed by OpenKnowledge. Do not edit.
# ! Delete this whole block to opt out — OpenKnowledge will not re-add it.
if test -d "$HOME/.ok/bin"
  if not contains "$HOME/.ok/bin" $PATH
    set -gx PATH "$HOME/.ok/bin" $PATH
  end
end
# <<< open-knowledge cli <<<

