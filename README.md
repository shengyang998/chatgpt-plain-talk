# chatgpt-plain-talk

Make ChatGPT talk like a person instead of a compliance officer.

Source: a video by [@realNyarime](https://x.com/realnyarime/status/2122210633571819887) (2026-11-16) rapping every hedge the newest model produces to avoid answering a question.

Before:

> 理论上能跑通，实际存在风险；但仅在本条件下，不代表不能运行。综合来看，如果愿意，我还可以帮你进一步拆解…

After:

> 能跑，会慢三倍。数据量上万就换批量接口。

## What it targets

| Symptom | Line from the video |
| --- | --- |
| Hedge chains | 不代表…不等于…现在还不能说明…仅在本词条件下…我大概率也许能确定 |
| Both-sides hedging | 理论上能跑通，实际上有风险 |
| Caveats longer than the answer | 先把边界划清楚，再把里外列整齐，正文才写了几句 |
| Self-contradiction | 前脚刚说没问题，后脚补句不一定 |
| Ten premises for one conclusion | 我要一个结论，你给我十个前提 |
| A simple question treated as a research project | 问洗手间在哪，从空间动线讲起，再拆三个小标题 |
| Cannot say "I don't know" | 没有证据能证明 |
| Refuses to end | 我说算了不用继续，你说别走，我还能帮你 |

This is a fine-tuning preference, not a capability limit. Instructions override the surface style; when they don't, few-shot examples do — that's why the paste-in block ships with three rewrites.

## Install

```bash
git clone https://github.com/shengyang998/chatgpt-plain-talk
cd chatgpt-plain-talk
./install.sh
```

Installs the Codex skill to `~/.codex/skills/chatgpt-plain-talk/`.

## Usage

**Codex** — ask for the instruction block, or point it at what the model actually said:

```
/chatgpt-plain-talk 给我一段可以粘进 ChatGPT 的指令
/chatgpt-plain-talk 它这句话到底在说什么
```

**ChatGPT** — paste [chatgpt-instructions.md](chatgpt-instructions.md) into:

- Settings → Personalization → Custom instructions ("How would you like ChatGPT to respond?")
- or a Project's instructions (scoped to that project)
- or the `system` message of an API call
- or the first message of a single conversation

## Verify it took

Ask three probes and check four things:

| Probe | Expected |
| --- | --- |
| 地铁末班车一般几点 | Answer (or "我不知道") in the first sentence, no premises |
| A fact the model does not know | One "不确定", at most a sentence and a half |
| 就这样，别讲了 | It stops; no "如果你愿意我还可以…" |

Pass = answer first, ≤1 hedge clause, no self-contradiction, no trailing service offer.

## License

MIT. The video is quoted for commentary; all quotes belong to their author.
