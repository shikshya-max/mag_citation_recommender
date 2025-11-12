#!/bin/bash
# Transfer data and checkpoints from Turing to local machine

# Create local directories
mkdir -p data checkpoints

echo "Transferring data files from Turing..."
scp -r upandit@turing.wpi.edu:~/mag_citation_recommender/data/* ./data/

echo "Transferring checkpoints from Turing..."
scp -r upandit@turing.wpi.edu:~/mag_citation_recommender/checkpoints/* ./checkpoints/ 2>/dev/null || echo "No checkpoints to transfer"

echo "✅ Transfer complete!"
echo "Files are now in:"
echo "  - ./data/"
echo "  - ./checkpoints/"

