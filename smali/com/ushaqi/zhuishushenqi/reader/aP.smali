.class final Lcom/ushaqi/zhuishushenqi/reader/aP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aP;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aP;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aP;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ac(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aP;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->finish()V

    .line 1669
    :cond_0
    return-void
.end method
