.class final Lcom/ushaqi/zhuishushenqi/ui/post/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/s;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 198
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/s;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->finish()V

    .line 200
    return-void
.end method
