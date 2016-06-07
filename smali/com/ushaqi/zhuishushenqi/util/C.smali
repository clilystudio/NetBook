.class final Lcom/ushaqi/zhuishushenqi/util/C;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/A;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/A;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->e(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/A;->d(Lcom/ushaqi/zhuishushenqi/util/A;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->h(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/A;->f(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/A;->g(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->i(Lcom/ushaqi/zhuishushenqi/util/A;)V

    .line 157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->j(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/A;->a(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;

    move-result-object v1

    .line 1453
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1454
    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/io/File;)Z

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->i(Lcom/ushaqi/zhuishushenqi/util/A;)V

    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/C;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->j(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u65e0\u6cd5\u4e0b\u8f7d\u5b89\u88c5\u6587\u4ef6\uff0c\u8bf7\u68c0\u67e5SD\u5361\u662f\u5426\u6302\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
