.class final Lcom/ushaqi/zhuishushenqi/ui/post/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/R;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/R;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/R;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;)V

    .line 146
    :cond_0
    return-void
.end method
