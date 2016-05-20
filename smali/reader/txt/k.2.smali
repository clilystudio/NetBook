.class final Lcom/ushaqi/zhuishushenqi/reader/txt/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/update/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/k;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 856
    packed-switch p1, :pswitch_data_0

    .line 871
    :goto_0
    return-void

    .line 858
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/k;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/k;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/k;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0

    .line 865
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/k;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0

    .line 868
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/k;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->I(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
