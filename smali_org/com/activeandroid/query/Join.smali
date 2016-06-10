.class public final Lcom/activeandroid/query/Join;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFrom:Lcom/activeandroid/query/From;

.field private mJoinType:Lcom/activeandroid/query/Join$JoinType;

.field private mOn:Ljava/lang/String;

.field private mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field

.field private mUsing:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/activeandroid/query/From;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Lcom/activeandroid/query/Join$JoinType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    .line 38
    iput-object p2, p0, Lcom/activeandroid/query/Join;->mType:Ljava/lang/Class;

    .line 39
    iput-object p3, p0, Lcom/activeandroid/query/Join;->mJoinType:Lcom/activeandroid/query/Join$JoinType;

    .line 40
    return-void
.end method


# virtual methods
.method public final as(Ljava/lang/String;)Lcom/activeandroid/query/Join;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mAlias:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public final on(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mOn:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    return-object v0
.end method

.method public final varargs on(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mOn:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    invoke-virtual {v0, p2}, Lcom/activeandroid/query/From;->addArguments([Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    return-object v0
.end method

.method public final toSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mJoinType:Lcom/activeandroid/query/Join$JoinType;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mJoinType:Lcom/activeandroid/query/Join$JoinType;

    invoke-virtual {v1}, Lcom/activeandroid/query/Join$JoinType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    const-string v1, "JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mType:Ljava/lang/Class;

    invoke-static {v1}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mAlias:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 76
    const-string v1, "AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mOn:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 82
    const-string v1, "ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/activeandroid/query/Join;->mUsing:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 87
    const-string v1, "USING ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", "

    iget-object v2, p0, Lcom/activeandroid/query/Join;->mUsing:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final varargs using([Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lcom/activeandroid/query/Join;->mUsing:[Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/activeandroid/query/Join;->mFrom:Lcom/activeandroid/query/From;

    return-object v0
.end method
