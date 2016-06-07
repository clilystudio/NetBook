.class final Lcom/ushaqi/zhuishushenqi/ui/bT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;

    const v1, 0x7f0c014a

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;

    const-string v2, "\u6d4b\u8bd5"

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;

    const-string v1, "\u8bf7\u8f93\u5165\u683c\u5f0f\u6b63\u786e\u7684url"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
