.class final Lcom/ushaqi/zhuishushenqi/ui/post/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/O;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 339
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 340
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/O;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->finish()V

    .line 341
    return-void
.end method
