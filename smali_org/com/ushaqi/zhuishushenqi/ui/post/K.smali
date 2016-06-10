.class final Lcom/ushaqi/zhuishushenqi/ui/post/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/K;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/K;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/K;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;Landroid/view/View;)V

    .line 115
    return-void
.end method
