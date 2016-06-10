.class final Lcom/ushaqi/zhuishushenqi/util/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/DialogUtil$FeedIntroDialog;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/DialogUtil$FeedIntroDialog;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/u;->a:Lcom/ushaqi/zhuishushenqi/util/DialogUtil$FeedIntroDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/u;->a:Lcom/ushaqi/zhuishushenqi/util/DialogUtil$FeedIntroDialog;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$FeedIntroDialog;->dismiss()V

    .line 74
    return-void
.end method
