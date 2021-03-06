CREATE TABLE IF NOT EXISTS jobs (
   job_id VARCHAR(255) PRIMARY KEY,
   driver_id VARCHAR(255) NOT NULL,
   start_time TIMESTAMP WITHOUT TIME ZONE NOT NULL,
   start_state VARCHAR(255) NOT NULL,
   start_xcoord FLOAT NOT NULL,
   start_ycoord FLOAT NOT NULL,
   end_time TIMESTAMP WITHOUT TIME ZONE NOT NULL,
   end_state VARCHAR(255) NOT NULL,
   end_xcoord FLOAT NOT NULL,
   end_ycoord FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS legs (
   leg_id VARCHAR(255) PRIMARY KEY,
   job_id VARCHAR(255) NOT NULL,
   leg INT NOT NULL,
   arrive_time TIMESTAMP WITHOUT TIME ZONE NOT NULL,
   leave_time TIMESTAMP WITHOUT TIME ZONE NOT NULL,
   type VARCHAR(255) NOT NULL,
   xcoord FLOAT NOT NULL,
   ycoord FLOAT NOT NULL
);