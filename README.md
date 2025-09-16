# dbt project

This project is a dbt project that uses dbt-core  and dbt-snowflake to create a data warehouse on snowflake.

## Prerequisites

- dbt-core
- dbt-snowflake
- snowflake account
- git
- python 3.12

## Setup

1. Install uv if not already installed:

   ```bash
   curl -LsSf https://astral.sh/uv/install.sh | sh
   ```

2. Install python 3.12:
   ```bash
   uv python install 3.12
   ```

3. Install the project dependencies:

   ```bash
   uv pip install -r requirements.txt
   ```


