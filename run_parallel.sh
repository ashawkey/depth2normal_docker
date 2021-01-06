set -euxo pipefail

# only generate GT
OMP_NUM_THREADS=32 ./depth2normal_parallel data_json/kitti_dc.json train gt /data/kitti_depth/ /data/kitti_normal_v2/
#OMP_NUM_THREADS=32 ./depth2normal_parallel data_json/kitti_dc.json val gt /data/kitti_depth/ /data/kitti_normal_v2/
OMP_NUM_THREADS=32 ./depth2normal_parallel data_json/kitti_dc.json test gt /data/kitti_depth/ /data/kitti_normal_v2/

# I don't use normals as input now, so this is not needed.
#OMP_NUM_THREADS=32 ./depth2normal_parallel data_json/kitti_dc.json train depth /data/kitti_depth/ /data/kitti_normal_v2/
#OMP_NUM_THREADS=32 ./depth2normal_parallel data_json/kitti_dc.json val depth /data/kitti_depth/ /data/kitti_normal_v2/
#OMP_NUM_THREADS=32 ./depth2normal_parallel data_json/kitti_dc.json test depth /data/kitti_depth/ /data/kitti_normal_v2/
#OMP_NUM_THREADS=32 ./depth2normal_parallel data_json/kitti_dc_test.json test depth  /data/kitti_depth/ /data/kitti_normal_v2/
