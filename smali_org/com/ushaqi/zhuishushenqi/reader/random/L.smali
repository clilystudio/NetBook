.class final Lcom/ushaqi/zhuishushenqi/reader/random/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/update/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/L;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 328
    packed-switch p1, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/L;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->onBackPressed()V

    .line 332
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/L;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v1, "random_reader_quit"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c042e
        :pswitch_0
    .end packed-switch
.end method
