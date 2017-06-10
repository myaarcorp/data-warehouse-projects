/****** Object:  PartitionFunction [MT_PF_YEAR]    Script Date: 6/9/2017 9:21:49 PM ******/
CREATE PARTITION FUNCTION [MT_PF_YEAR](int) AS RANGE RIGHT FOR VALUES (2016, 2017, 2018)