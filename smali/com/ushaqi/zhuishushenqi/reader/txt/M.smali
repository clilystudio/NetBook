.class final Lcom/ushaqi/zhuishushenqi/reader/txt/M;
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
    .line 450
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/M;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 453
    sparse-switch p1, :sswitch_data_0

    .line 478
    :goto_0
    return-void

    .line 456
    :sswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/M;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a()V

    goto :goto_0

    .line 460
    :sswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/M;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 461
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/M;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0

    .line 465
    :sswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/M;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->onBackPressed()V

    goto :goto_0

    .line 469
    :sswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/M;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)Z

    .line 470
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/M;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->u(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0

    .line 475
    :sswitch_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/M;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0

    .line 453
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c03e3 -> :sswitch_4
        0x7f0c03f9 -> :sswitch_2
        0x7f0c0400 -> :sswitch_3
        0x7f0c0402 -> :sswitch_0
        0x7f0c0404 -> :sswitch_1
    .end sparse-switch
.end method
