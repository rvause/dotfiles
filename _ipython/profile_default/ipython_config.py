from IPython import get_ipython
from IPython.terminal.prompts import Prompts, Token


c = get_config()


class SimplePrompt(Prompts):
    def in_prompt_tokens(self, cli=None):
        return [(Token.Prompt, '[{}] >>> '.format(self.shell.execution_count))]

    def out_prompt_tokens(self, cli=None):
        return [(Token.Prompt, '[{}] <<< '.format(self.shell.execution_count))]

    def continuation_prompt_tokens(self, cli=None, width=None):
        return [(Token.Prompt, '    ... ')]


c.TerminalInteractiveShell.prompts_class = SimplePrompt

