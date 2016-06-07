.class final Lcom/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/d;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/a/a/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/i;->a:Lcom/a/a/d;

    iput-object p2, p0, Lcom/a/a/i;->b:Landroid/content/Context;

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/a/a/i;->a:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/i;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/a/a/d;->a(Lcom/a/a/d;Landroid/content/Context;)V

    .line 906
    return-void
.end method
