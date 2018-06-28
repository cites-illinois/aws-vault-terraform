# ===================================================================
# Data
# ===================================================================

data "aws_subnet" "campus" {
    count = "${length(var.campus_subnets)}"

    state = "available"

    tags {
        Name = "${element(var.campus_subnets, count.index)}"
    }
}
data "aws_vpc" "campus" {
    id = "${data.aws_subnet.campus.0.vpc_id}"
    state = "available"
}

data "aws_subnet" "private" {
    count = "${length(var.private_subnets)}"

    state = "available"

    tags {
        Name = "${element(var.private_subnets, count.index)}"
    }
}
data "aws_vpc" "private" {
    id = "${data.aws_subnet.private.0.vpc_id}"
    state = "available"
}

data "aws_subnet" "public" {
    count = "${length(var.public_subnets)}"

    state = "available"

    tags {
        Name = "${element(var.public_subnets, count.index)}"
    }
}
data "aws_vpc" "public" {
    id = "${data.aws_subnet.public.0.vpc_id}"
    state = "available"
}
