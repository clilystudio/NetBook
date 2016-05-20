.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/cd;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 211
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(I)V

    .line 225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;II)V

    .line 226
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9009\u5bf9\u59ff\u52bf\u770b\u5c0f\u8bf4\uff0c\u4e66\u8352886~"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u7cfb\u5217\u597d\u4e66\u6253\u5305\u63a8\u8350\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7cfb\u5217\u597d\u4e66\u6253\u5305\u63a8\u8350\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/n;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
