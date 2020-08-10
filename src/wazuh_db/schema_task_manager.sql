/*
 * SQL Schema for task manager database
 * Copyright (C) 2015-2020, Wazuh Inc.
 * July 13, 2020.
 * This program is a free software, you can redistribute it
 * and/or modify it under the terms of GPLv2.
 */

BEGIN;

CREATE TABLE IF NOT EXISTS TASKS (
    TASK_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    AGENT_ID INT NOT NULL,
    MODULE TEXT NOT NULL,
    COMMAND TEXT NOT NULL,
    STATUS TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS IN_TASK_ID ON TASKS (TASK_ID);
CREATE INDEX IF NOT EXISTS IN_TASK_AGENT ON TASKS (AGENT_ID);
CREATE INDEX IF NOT EXISTS IN_TASK_MODULE ON TASKS (MODULE);
CREATE INDEX IF NOT EXISTS IN_TASK_COMMAND ON TASKS (COMMAND);
CREATE INDEX IF NOT EXISTS IN_TASK_STATUS ON TASKS (STATUS);

END;