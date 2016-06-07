.class public Lcom/c/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/c/a/j;

.field private synthetic b:Lcom/c/a/d;


# direct methods
.method constructor <init>(Lcom/c/a/d;Lcom/c/a/a;)V
    .locals 2

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/c/a/g;->b:Lcom/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1}, Lcom/c/a/d;->b(Lcom/c/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    iput-object v0, p0, Lcom/c/a/g;->a:Lcom/c/a/j;

    .line 1029
    iget-object v0, p0, Lcom/c/a/g;->a:Lcom/c/a/j;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/c/a/j;

    invoke-direct {v0, p2}, Lcom/c/a/j;-><init>(Lcom/c/a/a;)V

    iput-object v0, p0, Lcom/c/a/g;->a:Lcom/c/a/j;

    .line 1031
    invoke-static {p1}, Lcom/c/a/d;->b(Lcom/c/a/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/g;->a:Lcom/c/a/j;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static {p1}, Lcom/c/a/d;->d(Lcom/c/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/g;->a:Lcom/c/a/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a;)Lcom/c/a/g;
    .locals 4

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/c/a/g;->b:Lcom/c/a/d;

    invoke-static {v0}, Lcom/c/a/d;->b(Lcom/c/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 1065
    if-nez v0, :cond_0

    .line 1066
    new-instance v0, Lcom/c/a/j;

    invoke-direct {v0, p1}, Lcom/c/a/j;-><init>(Lcom/c/a/a;)V

    .line 1067
    iget-object v1, p0, Lcom/c/a/g;->b:Lcom/c/a/d;

    invoke-static {v1}, Lcom/c/a/d;->b(Lcom/c/a/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object v1, p0, Lcom/c/a/g;->b:Lcom/c/a/d;

    invoke-static {v1}, Lcom/c/a/d;->d(Lcom/c/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_0
    new-instance v1, Lcom/c/a/h;

    iget-object v2, p0, Lcom/c/a/g;->a:Lcom/c/a/j;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/c/a/h;-><init>(Lcom/c/a/j;I)V

    .line 1071
    invoke-virtual {v0, v1}, Lcom/c/a/j;->a(Lcom/c/a/h;)V

    .line 1072
    return-object p0
.end method
