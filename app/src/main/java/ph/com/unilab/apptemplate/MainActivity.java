package ph.com.unilab.apptemplate;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.Button;

import com.github.gcacace.signaturepad.views.SignaturePad;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class MainActivity extends AppCompatActivity {

    @BindView(R.id.signature_pad) SignaturePad signaturePad;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ButterKnife.bind(this);

        signaturePad.clear();
    }

    @OnClick(R.id.btn_clear)
    public void clearSignature(){
        signaturePad.clear();
    }
}
