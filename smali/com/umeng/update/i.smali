.class final Lcom/umeng/update/i;
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
    iput-object p1, p0, Lcom/umeng/update/i;->a:Landroid/content/Context;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/umeng/update/i;->a:Landroid/content/Context;

    .line 634
    const-string v1, "Please copy all resources (res/) from SDK to your project!"

    .line 635
    const/4 v2, 0x1

    .line 632
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 636
    return-void
.end method
