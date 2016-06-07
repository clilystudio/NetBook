.class final Lcom/ushaqi/zhuishushenqi/reader/cB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/update/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 158
    sparse-switch p1, :sswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 161
    :sswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->onBackPressed()V

    goto :goto_0

    .line 165
    :sswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b()V

    .line 166
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->a(Z)V

    goto :goto_0

    .line 170
    :sswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a()V

    goto :goto_0

    .line 174
    :sswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cB;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x7f0c03e5 -> :sswitch_1
        0x7f0c03e6 -> :sswitch_2
        0x7f0c03f9 -> :sswitch_0
        0x7f0c0405 -> :sswitch_3
    .end sparse-switch
.end method
