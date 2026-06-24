# Case Studies — Mo's ground truth

> The few-shot reasoning patterns behind the Mo Commas primitives. Each primitive
> prompt references the relevant case(s) as worked examples — they encode *how Mo
> thinks*, not abstract frameworks. Lifted from Build Spec v1. Add real
> input→output transcripts over time so these become true few-shot exemplars.

| ID | Case | The move (the encoded judgment) | Primitives it grounds |
|----|------|--------------------------------|------------------------|
| CS1 | **Headphone luxury hardware** — founder spilling candy in the lobby; can't raise $2M while competitors raise $200M | **Adjacent-market reframe:** stop competing on the saturated axis; move to where the product is a *prize*, not a spec — country-club member-guest event prizes, Hollywood luxury hearing-aid clientele | C3 Adjacent Market Mapper; C1 Shape Listener |
| CS2 | **Healthcare staffing road trip** — seller's job was "bodies" | **Latent-opportunity extraction:** the real $50–100M wasn't bodies; bring partners, solve the buyer's actual problem, become the local | C2 Pain Hypothesizer; C7 Trust-Building Sequencer; C5 Cross-Bag |
| CS3 | **Manufacturing CEO, no ICP** — sold to manufacturing + home builders but couldn't articulate why | **Lean into proven verticals:** name the verticals where there are real ROI stories; stop selling generically | C6 Sales-Maturity Diagnoser; Z4 ICP List Builder |
| CS4 | **PhD founder, 150-page deck** | **Compression to thesis:** 8 slides, "if I hand you a dollar, I make it $15" | C4 Compressor; Z3 Deliverable Generator |
| CS5 | **Cannabis dual-language positioning** — same product | **Two buyer-language frames:** identical product, two completely different buyer narratives | C2 Pain Hypothesizer; C7 Trust-Building Sequencer |
| CS6 | **Implants → vaccines repositioning** | **Adjacent reframe** across a regulated/adjacent domain | C3 Adjacent Market Mapper |

## How to use

- A primitive cites the case by ID in its `EXAMPLES` section.
- When a primitive's output misses what Mo would catch, capture the corrected
  input→output here as a new exemplar and update the primitive (the iteration
  loop in [`brain-builder.md`](brain-builder.md)).
- `[[ HITL: add the real source transcripts / decks / before-after artifacts for
  CS1–CS6 so these become full few-shot examples, not summaries. ]]`
