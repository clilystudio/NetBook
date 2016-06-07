.class final Lcom/ushaqi/zhuishushenqi/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/z;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/z;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->f()V

    .line 102
    return-void
.end method
