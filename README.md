# MEDIQA-CHAT-2023-NewAgeHealthWarriors
> Our team (NewAgeHealthWarriors) has worked on Task A. This readme will help you understand the problem statement, repo structure, how to run the code and generate output file via notebooks and shell script.

## Tasks
- **Task A - Short Dialogue2Note Summarization**: generating a section summary (section header and content) associated with the short input conversation. Section header will be one of twenty normalized section labels provided with the training data. 

## Repo Structure
    .
    ├── img                   # Pipeline, etc diagrams showcasing the approach
    ├── intermediate_outputs  # Intermediate output files generated by pipeline steps
    ├── final_output          # Folder contatining final output for each run for taskA
    ├── src                   # `.py` files involved in solving taskA 
    ├── data                  # Folder contatining train/val/test datasets
    ├── LICENSE
    └── README.md
> Please Note:  The final output for each of run1 and run2 will be store in `final_output` folder. This is because the `outputs` folder is created automatically for storing the model artefacts when the training is done.

## How to run the task specific code and generate output file?
  1. Clone the Repo - `git clone https://github.com/prakhar21/MEDIQA-CHAT-2023-NewAgeHealthWarriors.git`
  
 > Running Bash Script - For TaskA
  _(Run each of the mentioned shell scripts in the order shown)_
  1. Run `. ./install.sh` or `source install.sh`            <sub>_#Will create the environment and install requirements.txt_</sub>
  2. Run `. ./activate.sh` or `source activate.sh`          <sub>_#Will activate the environment_</sub>
  3. Run `. ./decode_taskA_run1.sh data/taskA_testset4participants_inputConversations.csv` or `source decode_taskA_run1.sh data/taskA_testset4participants_inputConversations.csv`     <sub>_#Will execute RUN1 for taskA_</sub>
  
_Note: Incase of failure due to GPT-3 API call for max length, please re-run it the script again._

## Proposed Approach
### Section Header Identification
<p align="center">
  <img src="https://github.com/prakhar21/MEDIQA-CHAT-2023-NewAgeHealthWarriors/blob/main/img/section_header_classification.png" width="750" title="section identification">
</p>

### Section Text Generation
<p align="center">
  <img src="https://github.com/prakhar21/MEDIQA-CHAT-2023-NewAgeHealthWarriors/blob/main/img/summary_flow.png" width="450" title="summary flow">
  <img src="https://github.com/prakhar21/MEDIQA-CHAT-2023-NewAgeHealthWarriors/blob/main/img/summary_ensemble_internal.png" width="400" title="section summary ensemble internal">
</p>
