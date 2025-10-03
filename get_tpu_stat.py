
import os
os.environ["PJRT_DEVICE"] = "TPU"

import torch_xla.debug.metrics as met

print(met.metrics_report())
