.class public final Lcom/activeandroid/query/Select;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# instance fields
.field private mAll:Z

.field private mColumns:[Ljava/lang/String;

.field private mDistinct:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mDistinct:Z

    .line 26
    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mAll:Z

    .line 29
    return-void
.end method

.method public varargs constructor <init>([Lcom/activeandroid/query/Select$Column;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mDistinct:Z

    .line 26
    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mAll:Z

    .line 36
    array-length v1, p1

    .line 37
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/activeandroid/query/Select;->mColumns:[Ljava/lang/String;

    .line 38
    :goto_0
    if-ge v0, v1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/activeandroid/query/Select;->mColumns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/activeandroid/query/Select$Column;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/activeandroid/query/Select$Column;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mDistinct:Z

    .line 26
    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mAll:Z

    .line 32
    iput-object p1, p0, Lcom/activeandroid/query/Select;->mColumns:[Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final all()Lcom/activeandroid/query/Select;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mDistinct:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mAll:Z

    .line 54
    return-object p0
.end method

.method public final distinct()Lcom/activeandroid/query/Select;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mDistinct:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/activeandroid/query/Select;->mAll:Z

    .line 47
    return-object p0
.end method

.method public final from(Ljava/lang/Class;)Lcom/activeandroid/query/From;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/From;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/activeandroid/query/From;

    invoke-direct {v0, p1, p0}, Lcom/activeandroid/query/From;-><init>(Ljava/lang/Class;Lcom/activeandroid/query/Sqlable;)V

    return-object v0
.end method

.method public final toSql()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-boolean v1, p0, Lcom/activeandroid/query/Select;->mDistinct:Z

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "DISTINCT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/activeandroid/query/Select;->mColumns:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/activeandroid/query/Select;->mColumns:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    iget-object v3, p0, Lcom/activeandroid/query/Select;->mColumns:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_1
    iget-boolean v1, p0, Lcom/activeandroid/query/Select;->mAll:Z

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "ALL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
