.class final Lcom/ushaqi/zhuishushenqi/download/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/download/a;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/download/a;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/download/a;->a(Lcom/ushaqi/zhuishushenqi/download/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/download/a;->a(Lcom/ushaqi/zhuishushenqi/download/a;I)I

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/download/a;->a(Lcom/ushaqi/zhuishushenqi/download/a;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/download/a;->b(Lcom/ushaqi/zhuishushenqi/download/a;)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/download/a;->a(Lcom/ushaqi/zhuishushenqi/download/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/download/a;->a(Lcom/ushaqi/zhuishushenqi/download/a;I)I

    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/download/a;->a(Lcom/ushaqi/zhuishushenqi/download/a;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/b;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/download/a;->b(Lcom/ushaqi/zhuishushenqi/download/a;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
