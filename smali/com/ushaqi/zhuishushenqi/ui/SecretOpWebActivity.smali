.class public Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;->setContentView(I)V

    .line 18
    const-string v0, "\u94fe\u63a5\u6d4b\u8bd5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;->b(Ljava/lang/String;)V

    .line 19
    const v0, 0x7f0c014b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bT;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bT;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
