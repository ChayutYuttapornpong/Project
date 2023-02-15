package com.chayut.introducemyself.viewholder

import android.view.View
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import kotlinx.android.synthetic.main.rv_row2.view.*
import com.chayut.introducemyself.R


class viewholder(itemView: View): RecyclerView.ViewHolder(itemView){
   var imgFileIcon = itemView.findViewById<ImageView>(R.id.imgFileIcon)
    var tvFileType = itemView.findViewById<TextView>(R.id.tvFileType)
    var tvFileDescription = itemView.findViewById<TextView>(R.id.tvFileDescription)

}