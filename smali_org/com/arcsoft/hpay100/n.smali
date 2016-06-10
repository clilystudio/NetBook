.class final Lcom/arcsoft/hpay100/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/n;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/arcsoft/hpay100/n;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->n(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/n;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->k(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/n;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const-string v2, "\u652f\u4ed8\u8fdb\u884c\u4e2d\uff0c\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/n;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/n;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    new-instance v3, Lcom/arcsoft/hpay100/w;

    iget-object v4, p0, Lcom/arcsoft/hpay100/n;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/arcsoft/hpay100/w;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    invoke-static {v1, v2, v0, v3}, Lcom/arcsoft/hpay100/config/l;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/k;)V

    goto :goto_0
.end method
