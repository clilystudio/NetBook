.class final Lcom/ushaqi/zhuishushenqi/reader/m;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/os/Handler;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/m;->b:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/m;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 162
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/m;->b:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->i(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 166
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/m;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const/4 v0, -0x1

    iput v0, v1, Landroid/os/Message;->what:I

    goto :goto_0
.end method
