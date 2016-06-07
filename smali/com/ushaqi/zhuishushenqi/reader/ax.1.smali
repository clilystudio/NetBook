.class final Lcom/ushaqi/zhuishushenqi/reader/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/update/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ax;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 1172
    packed-switch p1, :pswitch_data_0

    .line 1193
    :goto_0
    return-void

    .line 1177
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ax;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ax;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ax;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0

    .line 1187
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ax;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0

    .line 1190
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ax;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0

    .line 1172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
