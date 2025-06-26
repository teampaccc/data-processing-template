> This repo is meant to provide an example structure for data processing on a high performance computing (HPC) system such as Svante -- aimed at HPC beginners.

By the end of a scientific project, you will have written a lot of code, designed to process large amounts of data, and the entire thing may become unwieldy. This repo shows how you might deliberately organize your code to make it more manageable, and to leverage HPC resources to make it run faster. This template is compatible with Svante and can be emulated for larger projects. Additionally, a structure like this could be published to Github or Zenodo alongside your completed project, so that the people reading your work can follow along.

The components of the example project are:

### `test.env`
This is your environment file. It is where you load the packages you use in your code. When working in python on Svante, you need to load Anaconda and activate your environment.

### `test.ipynb`
Typically, data exploration and the development of software during a project will be done in a Jupyter notebook. When working on Svante, often you will launch your notebook using [Open OnDemand](https://svante-ood.mit.edu/).

### `module.py`
When your project reaches a certain level of maturity, you usually have bits of code that you are running over and over to accomplish the same tasks. It is good practice to wrap these into functions, and save them in a module. The module can then be imported into scripts and notebooks.

### `script.py`
The data processing and analysis steps used in your project can be saved into scripts, which can be run with a single command: `python script.py`. You can also pass arguments to these scripts, take a look for more details.

### `job.sh`
What if your data processing script is taking forever to run? In this case, you should make use of all the resources Svante has to offer, and write a job script that you can submit to the SLURM scheduler.

---

And that's it! The code in this repo provides a simple "Hello World" example. To run it:

1. From your directory on Svante, run:

```bash
git clone https://github.com/teampaccc/data-processing-template.git
cd data-processing-template
```

2. Edit the job.sh file

Replace "Your Name" with your actual name. Replace <<username>>@mit.edu with your mit email to get email updates from SLURM!

3. Submit your job

```bash
sbatch job.sh
```

If everything runs smoothly, there should be a slurm-######.out file created in your directory.

> Hopefully this provides some inspiration and you can imagine how this structure can be edited and extended to meet the needs of your project!