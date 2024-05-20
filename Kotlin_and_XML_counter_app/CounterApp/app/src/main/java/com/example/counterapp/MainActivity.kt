package com.example.counterapp

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.example.counterapp.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val textView:TextView= findViewById(R.id.tvCount)
        val increment:Button = findViewById(R.id.btnIncrement)
        val decrement: Button =findViewById(R.id.btnDecrement)
        val reset: Button = findViewById(R.id.btnReset)

        increment.setOnClickListener(){
            count++
            textView.text=count.toString()
        }
        decrement.setOnClickListener(){

            count--
            textView.text=count.toString()
        }

    }
    }
