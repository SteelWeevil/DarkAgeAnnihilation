/// scr_nearest_dead(x,y,obj)
//
//  Returns the id of the nth nearest instance of an object
//  to a given point or noone if none is found.
//
//      x,y       point coordinates, real
//      obj       object index (or all), real
//
/// GMLscripts.com/license
{
    var pointx,pointy,object,n,list,nearest;
    pointx = argument0;
    pointy = argument1;
    object = argument2;
    list = ds_priority_create();
    nearest = noone;
    with (object) {
        if !dead_found_already{
            ds_priority_add(list,id,distance_to_point(pointx,pointy));
        }
    }
    nearest = ds_priority_find_min(list);
    ds_priority_destroy(list);
    return nearest;
}
