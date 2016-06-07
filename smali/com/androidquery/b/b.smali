.class final Lcom/androidquery/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/androidquery/b/a;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/androidquery/b/a;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidquery/b/b;->a:Lcom/androidquery/b/a;

    iput-object p2, p0, Lcom/androidquery/b/b;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/androidquery/b/b;->c:Z

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/androidquery/b/b;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/b/b;->a:Lcom/androidquery/b/a;

    invoke-static {v1}, Lcom/androidquery/b/a;->a(Lcom/androidquery/b/a;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/androidquery/b/b;->c:Z

    invoke-static {v0, v1, v2}, Lcom/androidquery/util/b;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 696
    return-void
.end method
