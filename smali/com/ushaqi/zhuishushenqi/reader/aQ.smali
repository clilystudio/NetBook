.class final Lcom/ushaqi/zhuishushenqi/reader/aQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aQ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aQ;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z

    .line 1675
    return-void
.end method
