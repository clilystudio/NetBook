.class final Lcom/ushaqi/zhuishushenqi/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/c;->a:Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;B)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/c;-><init>(Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/c;->a:Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;->d()V

    .line 143
    return-void
.end method
