.class final Lcom/umeng/update/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/h;->a:Landroid/content/Context;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/umeng/update/h;->a:Landroid/content/Context;

    .line 605
    const-string v1, "Please add Permission in AndroidManifest!"

    .line 606
    const/4 v2, 0x1

    .line 604
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 607
    return-void
.end method
