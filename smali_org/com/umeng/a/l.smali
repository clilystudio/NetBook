.class final Lcom/umeng/a/l;
.super Lcom/umeng/a/n;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/umeng/a/j;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/a/j;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/a/l;->a:Lcom/umeng/a/j;

    iput-object p2, p0, Lcom/umeng/a/l;->b:Landroid/content/Context;

    .line 139
    invoke-direct {p0}, Lcom/umeng/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/umeng/a/l;->a:Lcom/umeng/a/j;

    iget-object v1, p0, Lcom/umeng/a/l;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/a/j;->b(Lcom/umeng/a/j;Landroid/content/Context;)V

    .line 142
    return-void
.end method
