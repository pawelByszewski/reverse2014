package eu.softisland.pinturnament;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;


public class GuardActivity extends Activity {

    private Button goButon;
    private EditText pinEditText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.empty_activity);
        goButon = (Button) findViewById(R.id.goButton);
        pinEditText = (EditText) findViewById(R.id.pin);
        goButon.setOnClickListener(new GoButtonListener());
    }

    private class GoButtonListener implements View.OnClickListener {

        @Override
        public void onClick(View view) {
            if(pinEditText.getText().toString() != null) {
                startActivity(new Intent(GuardActivity.this, TopSecretActivity.class));
            } else {
                pinEditText.setText("");
            }

        }
    }
}
