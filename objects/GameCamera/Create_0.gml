camera = camera_create();

var vm = matrix_build_lookat(1604,1732,-10,1604,1732,0,0,1,0);
var pm = matrix_build_projection_ortho(2048,1536,1,10000);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

view_camera[0] = camera;
