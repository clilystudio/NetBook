.class final Lcom/ushaqi/zhuishushenqi/reader/bU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;I)V

    .line 108
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bY;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/reader/bY;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bY;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    return-void
.end method
