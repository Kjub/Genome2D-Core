package com.genome2d.ui.skin;
import com.genome2d.ui.skin.GUISkin;
class GUISkinManager {
    static public function init():Void {
        GUISkin.g2d_batchQueue = new Array<GUISkin>();

        g2d_references = new Map<String,GUISkin>();
    }

    static private var g2d_references:Map<String,GUISkin>;
    static public function getSkin(p_id:String):GUISkin {
        return g2d_references.get(p_id);
    }

    static public function g2d_addSkin(p_id:String, p_value:GUISkin):Void {
        g2d_references.set(p_id,p_value);
    }

    static public function g2d_removeSkin(p_id:String):Void {
		trace(p_id);
        g2d_references.remove(p_id);
		trace(g2d_references.get(p_id));
		var i = g2d_references.keys();
		while (i.hasNext()) trace(i.next());
    }

    static public function getAllSkins():Map<String,GUISkin> {
        return g2d_references;
    }
}
