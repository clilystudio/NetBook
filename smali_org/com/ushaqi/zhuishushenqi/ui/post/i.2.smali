.class final Lcom/ushaqi/zhuishushenqi/ui/post/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/aa;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/i;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/i;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/i;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)V

    .line 48
    :cond_0
    return-void
.end method
