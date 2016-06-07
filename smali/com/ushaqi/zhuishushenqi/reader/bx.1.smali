.class final Lcom/ushaqi/zhuishushenqi/reader/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/bw;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/bw;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bx;->a:Lcom/ushaqi/zhuishushenqi/reader/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 415
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bx;->a:Lcom/ushaqi/zhuishushenqi/reader/bw;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/bw;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bx;->a:Lcom/ushaqi/zhuishushenqi/reader/bw;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bw;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bx;->a:Lcom/ushaqi/zhuishushenqi/reader/bw;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/reader/bw;->b:Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/TocSummary;)V

    .line 416
    return-void
.end method
