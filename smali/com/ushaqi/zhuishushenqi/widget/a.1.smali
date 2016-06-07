.class final Lcom/ushaqi/zhuishushenqi/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/a;->a:Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/a;->a:Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/a;->a:Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->b()V

    .line 115
    return-void
.end method
