OpportunitiesUpdateBatch opp = new OpportunitiesUpdateBatch();
id oppBatchID = Database.executeBatch(opp, 25);